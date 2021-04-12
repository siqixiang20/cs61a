from operator import add, sub, floordiv, mod

def abs_add(a,b):
    """Return abstract adding
   
    >>> m = abs_add(3,-10)
    >>> m
    13
    """
    if b < 0:
       f = a-b
    else:
       f = a+b
    return f