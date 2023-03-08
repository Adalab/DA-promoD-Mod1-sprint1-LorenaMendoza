USE sports_analytics;

#Realiza las siguientes consultas:

# 1) Selecciona las victorias máximas y mínimas para cada equipo diferente en la tabla de seasons.

##---De la tabla seasons no se pueden seleccionar esos datos, ya que solo tenemos como información
##   disponible el identificador de la temporada y la temporada. Dicha consulta habría que realizarla
##   en stats (pts,win_percent...)

SELECT MAX(w), MIN(w)
	FROM stats;
    
    #Las victorias máximas son 55
    #Las victorias mínimas son 20

# 2) Obtén los primeros 10 resultados de la tabla de teams.

SELECT *
	FROM teams
    ORDER BY team_id
	LIMIT 10; 

# 3) Selecciona todos los datos de los equipos que tengan entre 20 y 30 victorias de la tabla stats.

SELECT *
	FROM stats
	WHERE w BETWEEN 20 AND 30;

# 4) Realiza un conteo de número total de equipos que existen en la tabla teams.

SELECT COUNT(team)
	FROM teams;
    
    # El número total de equipos es 30.

#5)Calcula la media de todos los puntos conseguidos de la tabla stats.

SELECT AVG(pts)
	FROM stats;
    
    #La media de los puntos conseguidos es 111.51666641235352

# 6) Selecciona el máximo de victorias, máximo de puntos y la diferencia entre 
# el máximo de puntos con la media de puntos como diferencia_media de la tabla stats.

SELECT MAX(w), MAX(pts), (MAX(pts) - AVG(pts)) AS diferencia_media
	FROM stats;
    
##La información solicitada es la siguiente:
    #número de victorias máximas: 55',
    #número de puntos máximos: '118.6',
    #la diferencia entre el MAX(pts) y el AVG(pts): '7.083332061767578'
