import subprocess

def test_5():
    # Run the 5.awk script
    result = subprocess.run(
        ['gawk', '-f', '5.awk', 'titanic.csv'],
        capture_output=True,
        text=True
    )

    # Expected output

    expected_output = """PassengerId,Survived,Pclass,Name,Sex,Age,SibSp,Parch,Ticket,Fare,Cabin,Embarked
1,0,3,"Braund, Mr. Owen Harris",male,22,1,0,A/5 21171,7.25,,S
2,1,1,"Cumings, Mrs. John Bradley (Florence Briggs Thayer)",female,38,1,0,PC 17599,71.2833,C85,C
3,1,3,"Heikkinen, Miss. Laina",female,26,0,0,STON/O2. 3101282,7.925,,S
4,1,1,"Futrelle, Mrs. Jacques Heath (Lily May Peel)",female,35,1,0,113803,53.1,C123,S
5,0,3,"Allen, Mr. William Henry",male,35,0,0,373450,8.05,,S"""
    print(result.stdout.strip())
    assert result.stdout.strip() == expected_output.strip()