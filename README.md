# email_validation
Basic email validation in the console, using the [Email Address](https://github.com/afair/email_address) gem.


## Example usage
```
ruby validate_email.rb
Enter 'exit' to end

Enter email address: john.doe@example.com
john.doe@example.com is not valid
Error: This domain is not configured to accept email

Enter email address: john.doe@gmail.com
john.doe@gmail.com is valid
Normalized address: john.doe@gmail.com
Canonical address:  johndoe@gmail.com

Enter email address: john.doe@hotmail.com
john.doe@hotmail.com is valid
Normalized address: john.doe@hotmail.com
Canonical address:  john.doe@hotmail.com

Enter email address: JOHN.DOE+EXTRA@GMAIL.COM
JOHN.DOE+EXTRA@GMAIL.COM is valid
Normalized address: john.doe+extra@gmail.com
Canonical address:  johndoe@gmail.com

Enter email address: a@gmail.com
a@gmail.com is not valid
Error: Mailbox name too short

Enter email address: exit
```

