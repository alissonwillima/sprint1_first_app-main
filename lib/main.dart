import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'alisson.willliam',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Image.asset(
                'assets/add.png',
                color: Colors.white,
                height: 24.0,
                width: 24.0,
              ),
            ),
            const Icon(
              Icons.menu,
              size: 28.0,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45.0),
                      child: Image.asset(
                        'assets/user.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '67',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'publicações',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Text(
                              '42,5M',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'seguidores',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '1.068',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'seguindo',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Alisson William',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Text('🇧🇷🇺🇸'),
              const Text(
                '📚 Software Engineering',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                '💡 Provérbios 13:20',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                '📍Litoral, PR',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                'Ver Tradução',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32), // Aumentando o espaçamento superior
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação para editar perfil
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 47, 47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: const Size(159, 35),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                    ),
                    child: const Text(
                      'Editar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Ação para compartilhar perfil
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 47, 47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: const Size(135, 35),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    child: const Text(
                      'Compartilhar perfil',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ), // Adicionando espaçamento entre os botões
                  SizedBox(
                    width: 65,
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Ação para adicionar amigo
                      },
                      backgroundColor: const Color.fromARGB(255, 48, 47, 47),
                      mini: false,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: const Icon(Icons.person_add, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Seção de Destaques
              SizedBox(
                height: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 70,
                              height: 70,
                              color: Colors.white,
                              child: Center(
                                child: i == 0
                                    ? Image.asset(
                                        'assets/image1.png') // Imagem para o primeiro círculo
                                    : i == 1
                                        ? Image.asset(
                                            'assets/image2.png') // Imagem para o segundo círculo
                                        : i == 2
                                            ? Image.asset(
                                                'assets/image3.png') // Imagem para o terceiro círculo
                                            : Image.asset(
                                                'assets/image4.png'), // Imagem para o quarto círculo
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              i == 0
                                  ? 'Dev iOS'
                                  : i == 1
                                      ? '🇺🇸'
                                      : i == 2
                                          ? 'NYC'
                                          : 'Treinos',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    const Padding(
                      padding: EdgeInsets.only(left: 3.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.add),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Treinos',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Adicionando os ícones brancos abaixo dos destaques
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centralizando os ícones
                  children: [
                    buildIconButton(Icons.grid_on, context),
                    buildIconButton(Icons.video_library, context),
                    buildIconButton(Icons.person, context),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Adicionando a galeria de imagens
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    height: MediaQuery.of(context).size.width / 3 - 10,
                    color: Colors.white,
                    child:
                        Image.asset('assets/galeria01.jpeg', fit: BoxFit.cover),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 15,
                    height: MediaQuery.of(context).size.width / 3 - 10,
                    color: Colors.white,
                    child:
                        Image.asset('assets/galeria02.jpeg', fit: BoxFit.cover),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 15,
                    height: MediaQuery.of(context).size.width / 3 - 12,
                    color: Colors.white,
                    child:
                        Image.asset('assets/galeria03.jpeg', fit: BoxFit.cover),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Função para construir os ícones
  Widget buildIconButton(IconData icon, BuildContext context) {
    return SizedBox(
      height: 49, // Ajustando a altura
      width: MediaQuery.of(context).size.width / 3 - 19,
      child: ElevatedButton(
        onPressed: () {
          // Ação quando o ícone for pressionado
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
