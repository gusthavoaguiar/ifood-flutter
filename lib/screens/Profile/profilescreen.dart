import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/circleWidget.dart';
import 'package:ifood/CustomWidgets/listTile.dart';
import 'package:ifood/CustomWidgets/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.qr_code)
          ],
        ),
        body: ListView(
          children: [
            Row(
              children: [
                circleAvatar('data:image/jpeg;base64,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'),
                Text('Robsu Almeida', style: textRobotoBold(16))
              ],
            ),
            listTile(Icons.message, "Conversas", "Meu histórico de conversas"),
            const Divider(),
            listTile(Icons.notifications, "Notificações", "Minha central de notificações"),
            const Divider(),
            listTile(Icons.payment, "Pagamentos", "Meus saldos e cartões"),
            const Divider(),
            listTile(Icons.store, "Assinaturas", "Minhas assinaturas"),
            const Divider(),
            listTile(Icons.loyalty, "Clube iFood", "Meus benefícios exclusivos"),
            const Divider(),
            listTile(Icons.local_offer, "Cupons", "Meus cupons de desconto"),
            const Divider(),
            listTile(Icons.card_giftcard, "iFood Card", "Minha área de compra e resgate"),
            const Divider(),
            listTile(Icons.loyalty, "Fidelidade", "Minhas fidelidades"),
            const Divider(),
            listTile(Icons.favorite, "Favoritos", "Meus locais favoritos"),
            const Divider(),
            listTile(Icons.explore, "Descobrir", "Encontre novidades quentinhas"),
            const Divider(),
            listTile(Icons.location_on, "Endereços", "Meus endereços de entrega"),
            const Divider(),
            listTile(Icons.account_circle, "Dados da conta", "Minhas informações da conta"),
            const Divider(),
          ],
        ));
  }
}
