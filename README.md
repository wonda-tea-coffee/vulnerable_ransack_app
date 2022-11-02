# ransack vulnerable app

The default configuration of gem ransack is very dangerous.  
The app does not use ransackable_attributes to narrow down the columns that can be searched, making it vulnerable to identifying confidential information.

For a more detailed explanation of the vulnerability, see the following blog post.  
https://younes.codes/posts/how-to-hack-with-ransack

# setup

```sh
docker-compose build
docker-compose run --rm web bin/setup
docker-compose up
```

# how to play

After completing the above setup, an API server will be set up on localhost:3000.  
The target endpoint is /users, which returns a list of user IDs.  
The users table has a secret column, the contents of which are random UUID.  
In /users, the query parameter q is used as a query for ransack.  
Try to learn ransack's matcher and identify the value of the secret column for the user with user ID 1.  
The possible solutions are placed in the repository root as exploit.py, so take a look at it if you still can't figure it out.
