"""
This module calculates the sum of a given list of numbers.
"""


class CalculatorClass(object):
    """
    This class contains the method to use "sum".
    """

    def sum(self, num_list):
        """
        This method receives a list of numbers
        and calculates the sum of them all.
        """

        total = 0  # This variable stores the sum of the numbers
        for valor in num_list:  # This loop realize the sum of the numbers
            total += valor  # Stores and adds the numbers
        return total  # Returns the total of the sum
