import os
import sys

def combine_files_in_directory(directory, output_file):
    try:
        with open(output_file, 'w', encoding='utf-8') as outfile:
            for filename in os.listdir(directory):
                file_path = os.path.join(directory, filename)
                if os.path.isfile(file_path):
                    outfile.write(f"-- {filename}\n\n")
                    with open(file_path, 'r', encoding='utf-8') as infile:
                        outfile.write(infile.read())
                    outfile.write("\n\n")
        print(f"Contenido combinado en {output_file}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Uso: python combine_files.py <directorio> <archivo_salida>")
    else:
        directory = sys.argv[1]
        output_file = sys.argv[2]
        combine_files_in_directory(directory, output_file)
