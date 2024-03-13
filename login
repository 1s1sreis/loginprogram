import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class LoginProgram {
    private JFrame frame;
    private JTextField loginField;
    private JPasswordField passwordField;
    private JButton okButton;

    public LoginProgram() {
        frame = new JFrame("Login");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 150);

        loginField = new JTextField();
        passwordField = new JPasswordField();

        okButton = new JButton("OK");
        okButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                String login = loginField.getText();
                String password = new String(passwordField.getPassword());

                JOptionPane.showMessageDialog(null, "Login: " + login + "\nSenha: " + password);
            }
        });

        frame.setLayout(new GridLayout(3, 2));
        frame.add(new JLabel("Login:"));
        frame.add(loginField);
        frame.add(new JLabel("Senha:"));
        frame.add(passwordField);
        frame.add(okButton);

        frame.setVisible(true);
    }

    public static void main(String[] args) {
        new LoginProgram();
    }
}
