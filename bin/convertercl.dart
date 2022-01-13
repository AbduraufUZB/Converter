class Converter {
  String? _title;
  String? _code;
  String? _cbPrice;
  String? _nbuBuyPrice;
  String? _nbuCellPrice;
  String? _date;

  Converter(
      {String? title,
      String? code,
      String? cbPrice,
      String? nbuBuyPrice,
      String? nbuCellPrice,
      String? date}) {
    if (title != null) {
      this._title = title;
    }
    if (code != null) {
      this._code = code;
    }
    if (cbPrice != null) {
      this._cbPrice = cbPrice;
    }
    if (nbuBuyPrice != null) {
      this._nbuBuyPrice = nbuBuyPrice;
    }
    if (nbuCellPrice != null) {
      this._nbuCellPrice = nbuCellPrice;
    }
    if (date != null) {
      this._date = date;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get code => _code;
  set code(String? code) => _code = code;
  String? get cbPrice => _cbPrice;
  set cbPrice(String? cbPrice) => _cbPrice = cbPrice;
  String? get nbuBuyPrice => _nbuBuyPrice;
  set nbuBuyPrice(String? nbuBuyPrice) => _nbuBuyPrice = nbuBuyPrice;
  String? get nbuCellPrice => _nbuCellPrice;
  set nbuCellPrice(String? nbuCellPrice) => _nbuCellPrice = nbuCellPrice;
  String? get date => _date;
  set date(String? date) => _date = date;

  Converter.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _code = json['code'];
    _cbPrice = json['cb_price'];
    _nbuBuyPrice = json['nbu_buy_price'];
    _nbuCellPrice = json['nbu_cell_price'];
    _date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['code'] = this._code;
    data['cb_price'] = this._cbPrice;
    data['nbu_buy_price'] = this._nbuBuyPrice;
    data['nbu_cell_price'] = this._nbuCellPrice;
    data['date'] = this._date;
    return data;
  }
}