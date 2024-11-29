def anno_bisestile(anno):
    """Determine if a given year is a leap year."""
    return anno % 4 == 0

def domani(giorno, mese, anno):
    """Calculate the next day's date."""
    mesi_30 = [4, 6, 9, 11]
    mesi_31 = [1, 3, 5, 7, 8, 10, 12]
    
    # Days in February based on leap year
    if mese == 2:
        max_giorni = 29 if anno_bisestile(anno) else 28
    elif mese in mesi_30:
        max_giorni = 30
    elif mese in mesi_31:
        max_giorni = 31
    else:
        return "Errore: Mese non valido."
    
    if giorno < max_giorni:
        giorno += 1
    else:
        giorno = 1
        mese += 1
        if mese > 12:
            mese = 1
            anno += 1

    return f"{giorno}/{mese}/{anno}"