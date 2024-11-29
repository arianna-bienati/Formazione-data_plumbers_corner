import sys
import domani as domani

# cose da linea di comando sono sempre stringhe, 
# quindi se hai degli int o operazioni in con int
# bisogna coercere gli argomenti a int.

giorno = int(sys.argv[1])
mese = int(sys.argv[2])
anno = int(sys.argv[3])

with open('04-materials/presenti.txt') as f:
    file_content = f.read()
    name_list = file_content.split("\n")

for name in name_list:
    if name == "Arianna":
        print(f"Buongiornissimo {name}. Tè??? Comunque oggi è il {giorno}/{mese}/{anno}. Domani è il {domani.domani(giorno, mese, anno)}.")
    else:
        print(f"Buongiornissimo {name}. Caffè??? Comunque oggi è il {giorno}/{mese}/{anno}. Domani è il {domani.domani(giorno, mese, anno)}.")