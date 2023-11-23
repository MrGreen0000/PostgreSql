
-- Pour vérifier si l'extension pgcrypto est installée et activée dans votre base de données PostgreSQL, vous pouvez exécuter la requête suivante :
SELECT * FROM pg_extension WHERE extname = 'pgcrypto';

-- Si vous trouvez que pgcrypto n'est pas activé, vous pouvez l'activer en exécutant la commande suivante dans votre base de données :

CREATE EXTENSION IF NOT EXISTS pgcrypto;



SELECT *
FROM CLIENT
WHERE prenom = 'Muriel'
AND password = encode(digest('test11', 'sha1'), 'hex');