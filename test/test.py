def fact(n):
    if n == 0:
        return 1
    else:
        return n * fact(n-1)

def fact_times(n,k):
    "Return k * n * (n-1) * ... * 1"
    if n == 0:
        return k
    

class Kangaroo:

    pouch_contents = []

    def put_in_pouch(self, string):
        if string in self.pouch_contents:
            print('object already in pouch')
        else:
            self.pouch_contents += [string]

    def __str__(self):
        if self.pouch_contents == []:
            print("The kangaroo's pouch is empty.")
        else:
            print("The kangaroo's pouch contains:" + str(self.pouch_contents))
