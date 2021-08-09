//
//  ViewController.swift
//  MaravilhasTableView
//
//  Created by Ana Lucia Fermino de O. Arine on 19/07/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    // var wonders = [Wonder]()
    
    let wonders = [
        Wonder(nameImage: "machupicchu", name: "Machu Picchu", country: "Peru", description: "Machu Picchu (em quíchua Machu Picchu, 'velha montanha'), também chamada 'cidade perdida dos Incas', é uma cidade pré-colombiana bem conservada, localizada no topo de uma montanha, a 2.400 metros de altitude, no vale do rio Urubamba, atual Peru.  Foi construída no século XV, sob as ordens de Pachacuti. O local é, provavelmente, o símbolo mais típico do Império Inca, quer devido à sua original localização e características geológicas, quer devido à sua descoberta tardia em 1911."),
        Wonder(nameImage: "chichen", name: "Chichén Itzá", country: "México", description: "Chichén Itzá (do iucateque: Chi'ch'èen Ìitsha) foi uma grande cidade pré-colombiana construída pela civilização maia no final do período clássico. O sítio arqueológico está localizado no município de Tinum, no estado de Yucatán, México. Chichén Itzá era um polo urbano importante dos maias na planície norte no início (600-900) e no final (cerca 800-900) do período clássico e também no início do período pós-clássico (cerca de 900-1200). "),
        Wonder(nameImage: "coliseu", name: "Coliseu", country: "Itália", description: "Coliseu (em italiano: Colosseo), também conhecido como Anfiteatro Flaviano (em latim: Amphitheatrum Flavium; em italiano: Anfiteatro Flavio), é um anfiteatro oval localizado no centro da cidade de Roma, capital da Itália. Construído com tijolos revestidos de argamassa e areia, e originalmente cobertos com travertino, é o maior anfiteatro já construído e está situado a leste do Fórum Romano. A construção começou sob o governo do imperador Vespasiano em 72 d.C. e foi concluída em 80, sob o regime do seu sucessor e herdeiro, Tito. Outras modificações foram feitas durante o reinado de Domiciano (81-96). Estes três imperadores são conhecidos como a dinastia flaviana e o anfiteatro foi nomeado em latim desta maneira por sua associação com o nome da família (Flavius)."),
        Wonder(nameImage: "cristo", name: "Cristo Redentor", country: "Brasil", description: "Cristo Redentor é uma estátua art déco que retrata Jesus Cristo, localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, no Parque Nacional da Tijuca, com vista para a maior parte da cidade do Rio de Janeiro, Brasil. Em 2007 foi eleito informalmente como uma das sete maravilhas do mundo moderno. Em 2012 a UNESCO considerou o Cristo Redentor como parte da paisagem do Rio de Janeiro incluída na lista de Patrimônios da Humanidade. O monumento foi concebido pelo engenheiro brasileiro Heitor da Silva Costa e construído em colaboração com o escultor francês Paul Landowski e com o engenheiro compatriota Albert Caquot, entre 1922 e 1931 na França, devido ao pensamento dos franceses de que os brasileiros não tinham experiência para construir a estátua. Foi inaugurada no dia 12 de outubro de 1931, dia de Nossa Senhora Aparecida e fica no bairro do Alto da Boa Vista."),
        Wonder(nameImage: "muralha", name: "Grande Muralha da China", country: "China", description: "Grande Muralha da China é uma série de fortificações feitas de pedra, tijolo, terra compactada, madeira e outros materiais, geralmente construída ao longo de uma linha leste-oeste através das fronteiras históricas do norte da China para proteger os Estados e impérios chineses contra as invasões dos vários grupos nômades das estepes da Eurásia, principalmente os mongóis. Várias muralhas estavam sendo construídas já no século VII a.C., que mais tarde foram unidas e tornadas maiores e mais fortes, no que agora é referido como a Grande Muralha. Especialmente famosa é a muralha construída entre 220 e 206 a.C. por Qin Shi Huang, o primeiro Imperador da China. Pouco desta muralha permanece nos dias atuais. Desde então, a Grande Muralha foi reconstruída, mantida e melhorada; a maior parte do trecho existente é da dinastia Ming (1368-1644)."),
        Wonder(nameImage: "petra", name: "Petra", country: "Jordânia", description: "Petra, originalmente conhecida pelos nabateus como Raqmu, é uma cidade histórica e arqueológica localizada no sul da Jordânia. A cidade é famosa por sua arquitetura esculpida em rocha e por seu sistema de canalização de água. Outro nome para Petra é Cidade Rosa, devido à cor das pedras do local. Estabelecido possivelmente já em 312 a.C. como a capital dos árabes nabateus, é um símbolo jordaniano, assim como a atração turística a mais visitada do país. Os nabateus eram árabes nômades que aproveitaram a proximidade de Petra com as rotas comerciais regionais para estabelecê-la como um importante centro comercial. Os nabateus também são conhecidos por sua grande habilidade na construção de métodos eficientes de coleta de água em desertos áridos e seu talento em esculpir estruturas em rochas sólidas."),
        Wonder(nameImage: "piramides", name: "Necrópole de Gizé", country: "Egito", description: "Necrópole de Gizé, também chamada de Pirâmides de Gizé, Guizé ou Guisa, é um sítio arqueológico localizado no planalto de Gizé, nos arredores do Cairo, Egito. Este complexo de monumentos antigos inclui os três complexos de pirâmides conhecidas como as Grandes Pirâmides, a escultura maciça conhecida como a Grande Esfinge, vários cemitérios, uma vila operária e um complexo industrial. A palavra pirâmide não provém da língua egípcia. Formou-se a partir do grego 'pyra' (que quer dizer fogo, luz, símbolo) e 'midos' (que significa medidas). A necrópole está localizada a cerca de 9 km do interior do deserto para a cidade velha de Gizé, no Nilo, e cerca de 25 km a sudoeste do centro da cidade do Cairo, no local da antiga cidade egípcia de Mênfis. As pirâmides, que sempre tiveram grande importância como emblemas do antigo Egito no imaginário ocidental, foram popularizadas nos tempos helenísticos, quando a Grande Pirâmide foi listada por Antípatro de Sídon como uma das Sete Maravilhas do Mundo. É, de longe, a mais antiga das maravilhas do mundo antigo e a única que ainda existe."),
        Wonder(nameImage: "tajmahal", name: "Taj Mahal", country: "Índia", description: "O Taj Mahal é um mausoléu situado em Agra, na Índia, sendo o mais conhecido dos monumentos do país. Encontra-se classificado pela UNESCO como Patrimônio da Humanidade. Foi anunciado em 2007 como uma das sete maravilhas do mundo moderno. A obra foi feita entre 1632 e 1653 com a força de cerca de 20 mil homens, trazidos de várias cidades do Oriente, para trabalhar no suntuoso monumento de mármore branco que o imperador Shah Jahan mandou construir em memória de sua esposa favorita, Aryumand Banu Begam, a quem chamava de Mumtaz Mahal ('A joia do palácio'). Ela morreu após dar à luz o 14º filho, tendo o Taj Mahal sido construído sobre seu túmulo, junto ao rio Yamuna. Assim, o Taj Mahal é também conhecido como a maior prova de amor do mundo, contendo inscrições retiradas do Alcorão. É incrustado com pedras semipreciosas, tais como o lápis-lazúli entre outras. A sua cúpula é costurada com fios de ouro. O edifício é flanqueado por duas mesquitas e cercado por quatro minaretes. Supõe-se que o imperador pretendesse fazer uma réplica do Taj Mahal original na outra margem do rio, em mármore preto, mas acabou morto antes do início das obras por um de seus filhos.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wonders.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell") as! ListaTableViewCell
   
       // cell.textLabel.text = wonders[indexPath.row].name
        cell.wonderLbl.text = wonders[indexPath.row].name
        cell.countryLbl.text = wonders[indexPath.row].country
        cell.wonderImage.image = UIImage(named: wonders[indexPath.row].nameImage)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MaravilhaViewController {
            destination.maravilha = wonders[(tableView.indexPathForSelectedRow?.row)!]
        }
        
    }
}

