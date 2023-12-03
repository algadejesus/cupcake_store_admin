import '../database.dart';

class ClienteTable extends SupabaseTable<ClienteRow> {
  @override
  String get tableName => 'cliente';

  @override
  ClienteRow createRow(Map<String, dynamic> data) => ClienteRow(data);
}

class ClienteRow extends SupabaseDataRow {
  ClienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sobrenome => getField<String>('sobrenome');
  set sobrenome(String? value) => setField<String>('sobrenome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get fone => getField<String>('fone');
  set fone(String? value) => setField<String>('fone', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  int? get idEndereco => getField<int>('id_endereco');
  set idEndereco(int? value) => setField<int>('id_endereco', value);
}
