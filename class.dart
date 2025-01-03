class Person {
  // Properties of the Person class
  String name;
  int age;
  String job;

  // Constructor to initialize the Person object
  Person(this.name, this.age, this.job);

  // Method to display person details
  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Job: $job');
  }

  // Method to update the job
  void updateJob(String newJob) {
    job = newJob;
    print('$name\'s job has been updated to $job.');
  }
}

void main() {
  // Creating an object of the Person class
  Person person1 = Person('Alice', 30, 'Software Developer');

  // Displaying details
  person1.displayInfo();

  // Updating the job
  person1.updateJob('Project Manager');

  // Displaying updated details
  person1.displayInfo();
}
