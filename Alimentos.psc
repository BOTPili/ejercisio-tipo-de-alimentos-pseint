Algoritmo sin_titulo
	BanderaMenosCalorias <- 0
	BanderaFrutas <- 0
	ContFyVOrganicas <- 0
	AcumCalorias <- 0
	Escribir "¿Quiere ingresar alimenos? s/n"
	Leer Ingresar
	Mientras Ingresar == "s" Hacer
		Escribir "Ingrese nombre del alimento"
		Leer NombreAlimento
		Escribir "Ingrese cantidad de Calorías"
		Leer Calorias
		Escribir "Ingrese tipo de alimento :"
		Escribir "1- Pan y Cereales| 2- Frutas y Verduras| 3- Lácteos y Carnes | 4- Grasas y Azúcares"
		Leer TipoAlimento
		Escribir "Indique  O (Orgánico) - N (No Orgánico)"
		Leer OrigenAlimento
		Si Calorias >= 150 Entonces
			Escribir "Este alimento no es recomendable"
		SiNo
			Si Calorias < 150 Entonces
				Escribir "Alimento recomendable"
			FinSi
		FinSi
		Si BanderaMenosCalorias == 0 Entonces
			BanderaMenosCalorias <- 1
			Si Calorias < 150 Entonces
				MenosCalorias <- Calorias
				NombreMenosCalorias <- NombreAlimento
				TipoMenosCalorias <- TipoAalimento
			FinSi
		SiNo
			Si Calorias < MenosCalorias Entonces
				MenosCalorias <- Calorias
				NombreMenosCalorias <- NombreAlimento
				TipoMenosCalorias <- TipoAlimento
			FinSi
		FinSi
		Si BanderaFrutas == 0 Entonces
			BanderaFrutas <- 1
			Si OrigenAlimento == "o" Entonces
				Si TipoAlimento == 2 Entonces
					ContFyVOrganicas <- ContFyVOrganicas+1
				FinSi
			FinSi
		SiNo
			Si OrigenAlimento == "o" Entonces
				Si TipoAlimento == 2 Entonces
					ContFyVOrganicas <- ContFyVOrganicas +1
				FinSi
			FinSi
		FinSi
		AcumCalorias <- AcumCalorias + Calorias
		Escribir "¿Quiere ingresar otro alimento? s/n"
		Leer Ingresar
	FinMientras
	Escribir "La cantidad de Frutas y Verduras Orgánicas fue: ", ContFyVOrganicas
	Escribir "El alimento con menos calorias fue: ", NombreMenosCalorias " del tipo ", TipoMenosCalorias ",y la cantidad de calorías fue de ", MenosCalorias
	Escribir "La Cantidad de Calorías consumidas fue: ", AcumCalorias
FinAlgoritmo
