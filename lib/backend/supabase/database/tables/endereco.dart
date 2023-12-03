import '../database.dart';

class EnderecoTable extends SupabaseTable<EnderecoRow> {
  @override
  String get tableName => 'endereco';

  @override
  EnderecoRow createRow(Map<String, dynamic> data) => EnderecoRow(data);
}

class EnderecoRow extends SupabaseDataRow {
  EnderecoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EnderecoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get logradouro => getField<String>('logradouro');
  set logradouro(String? value) => setField<String>('logradouro', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);
}
