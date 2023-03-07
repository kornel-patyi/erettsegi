import csv
import os
import tempfile
import shutil


def main():
    while True:
        original = input("Adja meg az eredeti fájl nevét! ").strip()
        original = txt_adder(original)
        if os.path.isfile(original):
            break
        else:
            print("Nem található ilyen fájl.")

    while True:
        fixed = input("Adja meg a kimeneti fájl nevét! ").strip()
        if fixed == "":
            fixed = original
        fixed = txt_adder(fixed)
        res = "i"
        if fixed == original:
            res = input("Biztos, hogy felülírja az eredeti fájlt? (I, N) ").lower()
        elif os.path.isfile(fixed):
            res = input("Ilyen nevű fájl már létezik, kívánja felülírni? (I, N) ").lower()
        if res == "i":
            break

    problematic_fields = set()
    while True:
        try:
            field_name = input(
                "Adja meg a problémás mezőneveket! (input befejezéséhez nyomja meg a Ctrl + D, üres input) "
            )
        except EOFError:
            break
        else:
            field_name = field_name.strip()
            if field_name == "":
                break
            problematic_fields.add(field_name)

    if len(problematic_fields) == 0:
        exit("No fields given")

    if original == fixed:
        # ha megegyeznek a fájlnevek tempfile megoldással
        # https://stackoverflow.com/questions/39086/search-and-replace-a-line-in-a-file-in-python
        fh, abs_path = tempfile.mkstemp()
        with open(original, newline="") as csvfile, os.fdopen(fh, "w", newline="") as out:
            write_to_file(csvfile, out, problematic_fields)
        shutil.copymode(original, abs_path)
        os.remove(original)
        shutil.move(abs_path, original)
    else:
        # különben a felesleges fájlműveletek elkerüléséért már a végleges fájlba ír
        with open(original, newline="") as csvfile, open(fixed, "w", newline="") as out:
            write_to_file(csvfile, out, problematic_fields)

    print("Fájlba írás sikeres")


def txt_adder(filename: str) -> str:
    if not filename.endswith(".txt"):
        filename += ".txt"
    
    return filename


def write_to_file(input_file, output_file, problematic_fields: set | list | tuple) -> None:
    reader = csv.DictReader(input_file, delimiter="\t")
    writer = csv.DictWriter(output_file, reader.fieldnames, delimiter="\t")
    writer.writeheader()

    for line in reader:
        for field in problematic_fields:
            line[field] = line[field].replace(",", ".")
        writer.writerow(line)


if __name__ == "__main__":
    main()
