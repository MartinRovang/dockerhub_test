import os


def test_environment():
    assert os.environ['HOLLY'] == 'holly'


def test_larve():
    assert 1 == 2