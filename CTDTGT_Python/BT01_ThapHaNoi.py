n = int(input('Nhap so toa:'))

def thapHaNoi (n, toaMot, toaHai, toaBa):

    if  n == 1 :
	    print("chuyen tu", toaMot, "sang", toaBa)
    else:
	    thapHaNoi(n - 1, toaMot, toaBa, toaHai)
	    print("chuyen tu", toaMot, "sang", toaBa)
	    thapHaNoi(n - 1, toaHai, toaMot, toaBa)
print(thapHaNoi(n, "Mot", "Ba", "Hai"))
