//
//  Model.swift
//  HeroesSwiftUiAlex
//
//  Created by Alex  on 22/3/24.
//

import Foundation

struct Hero: Codable, Identifiable {
    let id: String
    let nombreReal: String
    let apodo: String
    let descripcion: String?
    let historia: String?
    let edad: Int
    let poderes: [Poderes]
    let imagen: String
    
}

extension Hero {
    static let test = Hero(id: "testId", nombreReal: "Juan Martínez", apodo: "Telemente", descripcion: "Después de un accidente en un laboratorio de neurociencia, Juan adquirió la capacidad de leer y manipular pensamientos.", historia: nil, edad: 32, poderes: [Poderes.telepatia, Poderes.amplificacionSonido], imagen: "telemente")
}

func getHeroes() -> [Hero] {
    guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { 
        print("error")
        return [] }
    
    do {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Hero].self, from: data)
    } catch {
        print("error2")
        return []
    }
}

enum Poderes: String, Codable{
    case comunicacionMarina = "Comunicación con vida marina"
    case invulnerabilidad = "Invulnerabilidad"
    case manipulacionSombras = "Manipulación de sombras"
    case manipulacionAgua = "Manipulación del agua"
    case manipulacionClima = "Manipulación del Clima"
    case manipulacionFuego = "Manipulación del fuego"
    case manipulacionMental = "Manipulación Mental"
    case pielMetalica = "Piel Metálica"
    case regeneracion = "Regeneración"
    case superFuerza = "Super Fuerza"
    case telepatia = "Telepatía"
    case teletransportacionATravesDeSombras = "Teletransportación a través de sombras"
    case transformacionEnFormaAcuática = "Transformación en forma acuática"
    case vuelo = "Vuelo"
    case amplificacionSonido = "Amplificación del Sonido"
    case controlElemental = "Control Elemental"
    case controlVibraciones = "Control de Vibraciones"
    case creacionRocas = "Creación de Rocas"
    case creacionTornados = "Creación de Tornados"
    case duplicacion = "Duplicación"
    case emisionLuz = "Emisión de Luz"
    case generacionVibraciones = "Generación de Vibraciones"
    case giroRapido = "Giro Rápido"
    case imitacionSonido = "Imitación de Sonido"
    case intangibilidad = "Intangibilidad"
    case invisibilidad = "Invisibilidad"
    case manipulacionLuz = "Manipulación de la Luz"
    case manipulacionTiempo = "Manipulación del Tiempo"
    case manipulacionTierra = "Manipulación de la Tierra"
    case teleTransportacion = "Teletransportación"
    case visionRayosX = "Visión de Rayos X"
}
