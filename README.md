# hero-exam

## What's inside?

1. ***root*** directory - root module.

    ```main.tf``` file -> calling ingress-module , and passing dynamicly created variables from ingress-module.

    ```provider.tf``` file -> configured terraform provider for minikube
  

  
2. ***modules / ingress*** directory - ingress module

    ```main.tf``` file -> created kubernetes resource - ingress 
  
    ```variables.tf``` file -> variables name and declaration
    
## How to run?

1. ```cd root``` 

2. ```terraform init```

3. ```terraform plan```

4. ```terraform apply```

## Output

![image](https://user-images.githubusercontent.com/65861319/152779393-cc67f37f-8e96-4477-ae87-419ee5fae9b4.png)
