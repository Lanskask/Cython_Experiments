# from primes import func
# from example import func
# import func
# import example.func
import pyximport;
pyximport.install()
from primes_module.script_cpy import func
from primes_module.primes import primes
from primes_module.primes import get_all_primes

if __name__ == '__main__':
    print("SOME RESULT: " + func(2, 4))
    # print("Primes: : " + str(primes(1002)))
    print("Primes: : " + str(get_all_primes(100)))
