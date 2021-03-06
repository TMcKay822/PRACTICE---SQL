
--SQL Statement that would return a list of names of top 10 teams
--Sort average height from tallest to shortest. 


/* CREATE TABLE FOR TEAM */
CREATE TABLE team(id int, League varchar(60), Name char(35), Division varchar(255),
                  PRIMARY KEY (id)); 

    INSERT INTO team VALUES (5001,'Blue League', 'Tigers', 10);
    INSERT INTO team VALUES (5002,'Blue League', 'Lions', 10);
    INSERT INTO team VALUES (5003, 'Blue League', 'Rams', 10);
    INSERT INTO team VALUES (5004, 'Blue League', 'Mice', 10);
    INSERT INTO team VALUES (5005, 'Blue League', 'Donkeys', 10);
    INSERT INTO team VALUES (5006, 'Blue League', 'Bear', 10);
    INSERT INTO team VALUES (5007, 'Blue League', 'AP', 10);
    INSERT INTO team VALUES (5008, 'Blue League', 'Links', 10);
    INSERT INTO team VALUES (5009, 'Blue League', 'Apples', 10);
    INSERT INTO team VALUES (5010, 'Blue League', 'Ladders', 10);
    INSERT INTO team VALUES (5011, 'Blue League', 'Chaos', 10);
    INSERT INTO team VALUES (5012, 'Blue League', 'Sloths', 10);
 
 /* VIEW THE TABLE */
SELECT * FROM team; 


/* CREATE TABLE FOR PLAYER */
CREATE TABLE player(id int, Name char(35), height int,
                  weight int, team_id int, PRIMARY KEY (id)); 

    INSERT INTO player VALUES (9001,'Jane', 55, 145, 5001);
    INSERT INTO player VALUES (9002,'Mike', 48, 133, 5002);
    INSERT INTO player VALUES (9003, 'Luis', 72, 170, 5003);
    INSERT INTO player VALUES (9004, 'Alex', 74, 177, 5004);
    INSERT INTO player VALUES (9005, 'Leah', 62, 160, 5005);
    INSERT INTO player VALUES (9006, 'James', 70, 188, 5006);
    INSERT INTO player VALUES (9007, 'Leo', 67, 165, 5007);
    INSERT INTO player VALUES (9008, 'Mary', 57, 153, 5008);
    INSERT INTO player VALUES (9009, 'Frank', 69, 162, 5009);
    INSERT INTO player VALUES (9010, 'Irena', 59, 139, 5010);
    INSERT INTO player VALUES (9011, 'Daisy', 71, 173, 5011);
    INSERT INTO player VALUES (9012, 'Jake', 64, 159, 5012);
    INSERT INTO player VALUES (9013, 'April', 67, 165, 5007);
    INSERT INTO player VALUES (9014, 'Rotceh', 57, 153, 5008);
    INSERT INTO player VALUES (9015, 'Jorge', 69, 162, 5009);
    INSERT INTO player VALUES (9016, 'Julius', 59, 139, 5010);
    INSERT INTO player VALUES (9017, 'Manny', 71, 173, 5011);
    INSERT INTO player VALUES (9018, 'Danny', 64, 159, 5012);

/* VIEW THE TABLE */
SELECT * FROM player; 


/* LEFT JOINING TABLES TOGETHER TO HAVE TEAM NAME ON SAME TABLE AS PLAYERS' HEIGHT */ 
SELECT b.id, a.name as Team_Name, b.name as Player_name, b.height, b.weight, b.team_id
INTO team_player
FROM player b
LEFT JOIN team a ON
a.id=b.team_id; 

/* VIEW THE TABLE */
SELECT * FROM team_player;

/* USED TO CREATE A TABLE THAT AVERAGES THE HEIGHTS OF THE PLAYERS */
SELECT Team_Name, avg(height) as avg_height, team_id
INTO New_table_with_avg_height
FROM team_player
GROUP by Team_Name, team_id

/* VIEW THE TABLE */
SELECT * FROM New_table_with_avg_height


/* Created table with the sort of average heights, instead of just viewing the information */
SELECT TOP (10) Team_Name, avg_height
INTO final_table_with_sorted_height
FROM New_table_with_avg_height
ORDER BY avg_height DESC


/* USED TO VIEW NEW TABLE THAT SORTS THE AVERAGE HEIGHTS OF THE TOP 10 TEAMS*/
select * from final_table_with_sorted_height




