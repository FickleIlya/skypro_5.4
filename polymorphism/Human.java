package polymorphism;

public class Human implements Swim{
    @Override
    public void swim() {
        System.out.println("I'm swimming!");
    }
}
