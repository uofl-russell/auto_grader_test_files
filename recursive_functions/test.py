import math
from random import randint
for i in range(40):
    k = randint(-2, 30)
    n = randint(-2, 30)
    if k<0 or n<0 or n>k:
        print("test_output", k, n, 0)
    else:
        print("test_output", k, n, math.comb(k, n))
