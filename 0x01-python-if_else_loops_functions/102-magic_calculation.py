#!/usr/bin/python3
def magic_calculation(I, II, III):
    if I < II:
        return III
    else:
        if III > II:
            return I + II
    return (I * II) - III
