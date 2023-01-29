package polymorphism;

public class Bear implements Swim {
    @Override
    public void swim() {
        System.out.println("Bear swimming!");
    }
}
