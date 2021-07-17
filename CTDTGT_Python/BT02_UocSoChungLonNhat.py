a = int(input("Nhap a = "))
b = int(input("Nhap b = "))

def uscln (a, b):

    if (b == 0):
        return a;
    return uscln (b, a % b);
print ('uoc chung lon nhat',a, 'va',b,"la:", uscln(a,b))

