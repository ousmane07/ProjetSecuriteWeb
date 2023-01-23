# ProjetSecuriteWeb

Ouvrez le fichier en mode edit pour pouvoir voir les différentes parties

projet maven sécurité web

Explication détaillée du projet

Notre projet s'appelle scolarite web
Dans celui-ci, nous avons gérer la partie backend et la partie frontend

I BACKEND

  Dans la partie backend, nous avons créer des packages
  -Sn.isi.securiteweb.controller
      C'est au niveau des controllers qu'on a créer nos servlets. Ils ont pour role de recevoir les requetes HTTP de l'utilisation puis lui retourner une vue
      Vous verrez différentes servlets notamment:
        *RegistrationServlet(qui permet d'enregistrer un nouvel utilisateur dans la base de données)
        *CompteServlet(qui permet de créer un nouveau compte à un utilisateur déjà inscrit en renseignant son username et son password )
        *DroitsServlet ( qui permet de créer un droit que l'utilisateur peut avoir )
        *LoginServlet( qui permet à l'utilisateur qui a déjà un compte de se connecter )
        *HomeServlet ( c'est le servlet qui va se charger d'appeler la page d'accueil de l'utilisateur connecté )
        *FindAllUsersServlet ( qui permet d'afficher la liste de tous les utilisateurs qui sont inscrits dans la base de données )
        "FindAllCompteServlet ( qui permet aussi de liter tous les comptes des utilisateurs )
        *LogoutServlet ( qui permet à l'utilisateur de se déconnecter )
  
  -Sn.isi.securiteweb.dao ( Data Access Object )
    Dans ce package, vous verrez qu'il y'a 2 niveaux : les Interfaces et les implementations.
      *Les interfaces
        Nous avons créer 4 Interfaces :CompteDao, DroitsDao, UserDao et Repository.
        Dans les normes, chaque interface doit avoir son impémentation. Mais dans notre projet, pour éviter la répétiton de codes, vous verrez que 
        Le 3 premières interfaces héritent de Repository qui ne contient que des méthodes, généralement des methodes CRUD. et ça sera pareille pour 
        les implémentation : c'est la GENERECITE
      *Les implementations
        Comme on l'a dit ci-dessus, ComptesDaoImpl, DroitsDaoImpl, UserDaoImpl vont hériter de RepositoryImpl pour éviter la répétition de codes.
        Ce dernier aura les memes méthodes définies dans repository mais ici elles seront implémentées
  -Sn.isi.securiteweb.dto ( Data Transfert Object )
    Cette couche fait partie de l'aspect métier. Vous verrez ici ausi nos 4 classes 
    avec leurs attributs définies, les getters et les setters générés
  -Sn.isi.securiteweb.entities
    Je meme que c'est ici qu'on devrait commencer à expliquer.On a 3 classes: User.java, Droits.java et Compte.java
    Chaque classe a ses attributs qui lui sont specifiques et qui seront générés dans la base de données.
    Notons également que chaque classe fera l'objet d'une table dans la base de données.
  -Sn.isi.securiteweb.filter
    Dans ce package, on a créé notre classe AuthenticateFilter.java
    Cette permet de filtrer les requetes des utilisateurs. En effet, nul n' le droit d'accéder à la page de le liste des compte ou la liste des utilisateurs si la 
    personne n'est pas connectée. C'est là qu'on fait appelle à notre filtre. Si l'utilisateur essaye d'acceder à ces pages sans etre connecter, le filtre se chargera
    de lui lui rediriger à la page de connexion.Tant qu'il n'est pas connecter, il n'ccèdera pas à ces pages.
  -Sn.isi.securiteweb.Util
    C'est ici qu'on a créé notre classe Hibernate.Elle se chage de prendre les informations de notre base de données, le Driver, le port utilisé etc pour 
    pouvoir la générer sur Mysql
   
II FRONTEND    

  Dans cette partie, nous avons utilisé un template. Certains de nos fichiers .jsp se trouvent dans /webapp/WEB-INF
  d'autres se trouvent dans /webapp/WEB-INF/views
  *addcompte.jsp ( la vue pour ajouter un nouveau compte )
  *registercompte-success ( la page qui nous informe que le compte a été créé dans la base de données avec succès )
  *allcomptes.jsp ( la vue pour lister tous les comptes )
  *login ( la page de connexion )
  *registration.jsp ( la vue pour inscrire un nouvel utilisateur )
  *register-success ( la page qui nous informe que l'utilisateur s été ajouté dans la base de données avec succès )
  *allusers ( la vue pour lister tous les utilisateurs )
  *home ( lapage d'accueil )  
Sans oublier le fichier Pom.xml dans lequel on a ajouté toutes nos dépendances pour pouvoir en arriver là sur ce projet

Par manque de temps, on a pas pu terminer tout le travail demandé. Cependant, nous poursuiveront le travail dans les jours à venir
  
  
  
    
        
