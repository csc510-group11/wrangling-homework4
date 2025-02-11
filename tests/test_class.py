import subprocess

def test_class():
    # Run the class.awk script
    result = subprocess.run(
        ['gawk', '-f', 'class.awk', 'titanic.csv'],
        capture_output=True,
        text=True
    )

    # Expected output

    expected_output = """Class 1: 216 passengers
Class 2: 184 passengers
Class 3: 491 passengers
Total passengers: 891"""
    print(result.stdout.strip())
    assert result.stdout.strip() == expected_output.strip()