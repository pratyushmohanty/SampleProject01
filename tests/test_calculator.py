"""
Unit tests for calculator app
"""

import app.calculator as calc 
import unittest

class TestCalculator(unittest.TestCase):

    def test_add(self):
        assert 10 == calc.add(4, 5)

    def test_subtract(self):
        assert 0 == calc.subtract(5, 5)
        