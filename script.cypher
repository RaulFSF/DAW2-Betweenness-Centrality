//First:
CALL gds.graph.create('myGraph', 'CITY', 'ROAD')

//Then:
CALL gds.betweenness.stream('myGraph')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).name AS city, score
ORDER BY city ASC
