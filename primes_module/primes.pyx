
def function(a: int, b: int) -> str:
    return str(a + b)

def integrate_f(double a, double b, int N, f):
    cdef int i
    cdef double s
    cdef double dx
    s = 0
    dx = (b - a) / N
    for i in range(N):
        s += f(a + i * dx)
    return s * dx


def get_all_primes(int n) -> list[int]:
    lst : list[int]  = []
    k = 0
    for i in range(2, n + 1):
        for j in range(2, i):
            if i % j == 0:
                k = k + 1
        if k == 0:
            lst.append(i)
        else:
            k = 0
    return lst

def primes(int nb_primes) -> list[int]:
    cdef int n, i, len_p
    cdef int[1000] p

    if nb_primes > 1000:
        nb_primes = 1000
        len_p = 0  # The current number of elements in p.
        n = 2

        while len_p < nb_primes:
            # Is n prime?
            for i in p[:len_p]:
                if n % i == 0:
                    break

    # If no break occurred in the loop, we have a prime.
    else:
        p[len_p] = n
        len_p += 1
        n += 1

    # Let's copy the result into a Python list:
    result_as_list = [prime for prime in p[:len_p]]
    return result_as_list
