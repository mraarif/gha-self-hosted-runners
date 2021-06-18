import pytest
import time


def test_divide_by_zero():
    # mimicing really long tests run
    time.sleep(30)
    with pytest.raises(ZeroDivisionError):
        5 / 0
