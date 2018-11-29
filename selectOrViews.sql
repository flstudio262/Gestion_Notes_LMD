/*SELECT*/
/*Selection : matiereEquivalenteBy(idniveau, referencematiere, id)*/	
	select * from matiere where  referencematiere IS NOT NULL 
	and referencematiere 
	IN(
		select id as referencematiere from matiere 
		where referencematiere IS NULL and idniveau = 5     
	); 	

	
/*VIEWS*/
create or replace view etudiantinscritview as select 
  e.*,
  u.filiere
FROM etudiant e 
JOIN universite u ON u.id = e.iduniversite; 

create or replace view matiereniveauview as select 
  m.*,
  n.intitule,
  n.semestre 
FROM matiere m 
JOIN niveau n ON m.idniveau = n.id; 