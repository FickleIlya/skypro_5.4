package polymorphism;

public class Main {
    public static void main(String[] args) {
        Animal cat = new Cat();
        Animal dog = new Dog();
        Animal animal = new Animal();

        for (Animal a : new Animal[] { cat, dog, animal }) {
            a.makeSound();
        }
    }
}
