"""
numbers prime module
"""


class PrimeClass(object):
    """
    prime number class
    """

    def is_prime(self, num_int):
        """
        verify if a number is prime
        """
       
        if num_int < 2:
            isPrime = False
        else:
            isPrime = True

        div = 2
        while isPrime and div < num_int:
            if num_int % div == 0:
                isPrime = False
            div = div + 1

        return isPrime
