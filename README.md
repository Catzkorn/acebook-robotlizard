# RobotLizard

Welcome to RobotLizard, the social network for lizards and robots who like to hack. 

## Team goals

![RobotLizard goals](https://imgur.com/HK4isr2.jpg)

## User stories

![User Stories](https://imgur.com/goTdlhn.jpg)


## General structure of the project

![CRC Diagram](https://imgur.com/nCuydqF.jpg)

![MVC Model](https://imgur.com/R8j9mXM.jpg)

![MVP](https://imgur.com/Kzlistb.jpg)


## Gems

- For this project, we used different gems:

### Contructing classes

- Devise: this gems facilitated the creation of our User class, where functionalities like create user, sign in, sign up and logout functions were implemented as well as the ability to send emails to users. Configurations must be done in the database and in the general views to adjust to our needs. 

### Making Friends

- To allow users to have friends, we used the 'has_friendship' gem. This allows users to request friendships, accept or decline friendships, and to block and unblock other users.

### Like/Unlike

- Users have the ability to like and unlike posts thanks for the 'acts_as_voteable' gem.


### Styling

- Bootstrap: to start our styling, but some of bootstraps's functionalities were overriden by our own styling
- ImageMagick: to help manipulate images in our app

![Styling Ideas](https://i.imgur.com/cUUTP5Z.jpg)

![Styling Ideas 2](https://i.imgur.com/Wif3TDY.jpeg)

### Funcionalities

- Act as votable: this was used to be able to like or inlike posts
- Has friendship: help to implement the friendship functionalities


## What is Robot Lizard made of:

- We created our page based on the actual facebook page:
  - Creating User Class
  - Creating Post Class
  - Creating Comment Class
  - Creating Friendship Class
- The classes are interlinked by each relevant ID
 
 
