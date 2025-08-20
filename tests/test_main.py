from hola_mundo.main import hola


def test_hola() -> None:
    assert hola("Delta") == "Hola, Delta!"
