"""
This module verifies if a given number is prime or not.
"""


class PrimeClass(object):
    """
    This class contains the method to use "is_prime".
    """

    def is_prime(self, num_int):
        """
        This method receives an integer number. It will print True
        if the number is prime or False if it is not.
        """
        if num_int < 2:  # A prime number is never less than 2.
            return False  # Is not prime.
        # This loop makes a division between the given number and
        # all the numbers that are between 2 and the given number
        for valor in range(2, num_int):  # It takes values from 2 to num_int.
            if num_int % valor == 0:  # If the remainder of the division is 0
                return False  # Is not prime.
        return True  # If not then is prime.
