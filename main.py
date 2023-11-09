from pydantic import BaseModel

class Person(BaseModel):
    firstname: str
    lastname: str
    email: str


def main():
  print("AWS23/07")
  teilnehmer = Person(firstname="Max", lastname="Mustermann", email="max@mustermann.de")


if __name__ == "__main__": 
  main()
