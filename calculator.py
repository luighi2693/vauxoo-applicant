"""
calculator module
"""


class CalculatorClass(object):
    """
    calculator class
    """

    def sum(self, num_list):
        """
        sum a list of numbers and return the result
        """
       result = 0
        for num in num_list:
            result = num + result

        return result
