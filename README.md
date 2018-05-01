
<h1>The Hacking Gossip : première version</h1>
<h2>1. Les bases basiques avec Heroku<br>
@Kalejo<br>
thplille@gmail.com
</h2>



<b>Team Lille THP</b>

<em>Bonjour</em>

<p>Le projet du jour : Heroku


Pages Statiques.
<ul> 
<li>1. Les bases.

    *Création d'une app rails avec rails new the-gossip-project et lancer avec Heroku.


    *bundle installe*<br>
    *créer Première page, premières routes
    *créé un controller static_pages.
    <ul>
    	<li>Accueil</li>
    	<li>Index des gossips</li>
    	<li> Nouveau gossip</li>
    </ul>

    *dans les routes, je mets la méthode home au root du programme.
</li></ul>
<ul><li>
2. Premières pages

	*Installation de Bootstrap

    *Un header pour tout le site avec Bootsrap. Créé une partial _header.html.erb dans le dossier app/views/layouts puis fais appel à elle dans le fichier app/views/layouts/application/html.erb.
    *création des méthodes dans le controller
    et dans les views.
</li></ul>
<ul><li>
3.Faire un premier site avec backend

	*New et Create

	*Show

	* Edit
	*Edit et Update
	* Destroy
	*Index
 	*Les commentaires
	*Le model comment avec anonymous_commentor, body
    *On créé un commentaire sur la page show du gossip qui le concerne. Il y a un formulaire qui va demander le nom du commentateur, puis le body du commentaire.

    *La page show du gossip affiche tous les commentaires liés à ce gossip. Pour chaque commentaire, il y a un lien pour le modifier.
    *Modification et destroy.
    *Compter les commentaires
</li>

</ul>

PS: Pas de Pair-Programming pour moi parce que je suis tout seul sur ce projet.</p>
