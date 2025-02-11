import subprocess

def test_task2():
    # Run the task2.sh script
    result = subprocess.run(
        ['/bin/bash' ,'task2.sh'],
        capture_output=True,
        text=True
    )

    # Expected output
    
    expected_output ="""Lines containing the word banana in the file sample.txt:
banana
banana
banana
Lines not containing the word banana in the file sample.txt:
apple
apple
cherry
date
Unique lines in the file sample.txt:
apple
banana
cherry
date
Count the occurance of each word in the file sample.txt:
      2 apple
      3 banana
      1 cherry
      1 date
Count the occurance of the word banana in the file sample.txt:
      3 banana
    """

    # Assert the expected output matches the actual output
    assert result.stdout.strip() == expected_output.strip()