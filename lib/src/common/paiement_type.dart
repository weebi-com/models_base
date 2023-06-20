// live with typo mistake
class PaiementType {
  final String _paiementType;
  const PaiementType._(this._paiementType);

  @override
  String toString() => _paiementType;

  static const PaiementType cash = PaiementType._('cash');
  static const PaiementType mobileMoney = PaiementType._('mobileMoney');
  static const PaiementType nope = PaiementType._('nope');
  static const PaiementType goods = PaiementType._('goods');
  static const PaiementType cheque = PaiementType._('cheque');
  static const PaiementType cb = PaiementType._('cb');
  static const PaiementType unknown = PaiementType._('');

  static PaiementType tryParse(String val) {
    switch (val) {
      case 'cash':
        return PaiementType.cash;
      case 'mobileMoney':
        return PaiementType.mobileMoney;
      case 'goods':
        return PaiementType.goods;
      case 'cheque':
        return PaiementType.cheque;
      case 'cb':
        return PaiementType.cb;
      case 'nope':
        return PaiementType.nope;
      case '':
        return PaiementType.unknown;
      default:
        print('$val is not a valid paiementType');
        return PaiementType.unknown;
    }
  }

  static String paiementString(PaiementType paiement) {
    if (paiement == PaiementType.nope) {
      return 'À crédit';
    } else if (paiement == PaiementType.mobileMoney) {
      return 'Mobile Money';
    } else if (paiement == PaiementType.cheque) {
      return 'Chèque';
    } else if (paiement == PaiementType.goods) {
      return 'Biens';
    } else if (paiement == PaiementType.cash) {
      return 'Cash';
    } else {
      return 'Inconnu';
    }
  }
}
