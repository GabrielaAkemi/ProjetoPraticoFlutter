import 'package:flutter/material.dart';

void main() {
  runApp(AtividadePratica());
}

class AtividadePratica extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Loja de Produtos",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF2F2F2),
          foregroundColor: Color(0xFF593622),
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8C4E2A),
          primary: const Color(0xFF593622),
        ),
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
      ),
      home: TelaProduto(),
    );
  }
}

class TelaProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/logo.png",
          height: 40,
          errorBuilder: (context, error, stackTrace) => const Text("LOGO"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "PULSEIRA PANTHÈRE DE CARTIER",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF593622),
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              FotoProduto(caminhoImagem: "assets/produto.png"),
              const Miniaturas(
                img1: "assets/produto2.png",
                img2: "assets/produto3.png",
              ),
              InfoPreco(preco: "R\$ 1.340.000,00"),
              AcoesRapidas(),
              DescricaoProduto(
                texto: "Pulseira Panthère de Cartier, ouro branco 750/1000, ônix, "
                    "engastada com quatro esmeraldas e 485 diamantes lapidação "
                    "brilhante totalizando 6,25 ct (tamanho 17).",
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class Miniaturas extends StatelessWidget {
  final String img1;
  final String img2;
  const Miniaturas({super.key, required this.img1, required this.img2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 150,
              decoration: const BoxDecoration(color: Colors.white),
              child: Image.asset(img1, fit: BoxFit.contain),
            ),
          ),
          Expanded(
            child: Container(
              height: 150,
              decoration: const BoxDecoration(color: Colors.white),
              child: Image.asset(img2, fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}

class FotoProduto extends StatelessWidget {
  final String caminhoImagem;
  const FotoProduto({super.key, required this.caminhoImagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(color: Colors.white),
      child: Image.asset(caminhoImagem, fit: BoxFit.contain),
    );
  }
}

class InfoPreco extends StatelessWidget {
  final String preco;
  const InfoPreco({super.key, required this.preco});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            preco,
            style: const TextStyle(
                fontSize: 22, color: Color(0xFF8C4E2A), fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            label: const Text("COMPRAR"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8C4E2A),
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class AcoesRapidas extends StatelessWidget {
  const AcoesRapidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.share_outlined, color: Color(0xFF593622)),
          Icon(Icons.chat_bubble_outline, color: Color(0xFF593622)),
          Icon(Icons.favorite_border, color: Color(0xFF593622)),
        ],
      ),
    );
  }
}

class DescricaoProduto extends StatelessWidget {
  final String texto;
  const DescricaoProduto({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFD9C2A7).withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          texto,
          textAlign: TextAlign.justify,
          style: const TextStyle(
          fontSize: 15, color: Color(0xFF593622), height: 1.6),
        ),
      ),
    );
  }
}