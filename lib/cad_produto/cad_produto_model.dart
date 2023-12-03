import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'cad_produto_widget.dart' show CadProdutoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadProdutoModel extends FlutterFlowModel<CadProdutoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeController;
  String? Function(BuildContext, String?)? textFieldNomeControllerValidator;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoControllerValidator;
  // State field(s) for TextFieldProco widget.
  FocusNode? textFieldProcoFocusNode;
  TextEditingController? textFieldProcoController;
  final textFieldProcoMask = MaskTextInputFormatter(mask: '##.##');
  String? Function(BuildContext, String?)? textFieldProcoControllerValidator;
  // State field(s) for TextFieldPrecoPromo widget.
  FocusNode? textFieldPrecoPromoFocusNode;
  TextEditingController? textFieldPrecoPromoController;
  final textFieldPrecoPromoMask = MaskTextInputFormatter(mask: '##.##');
  String? Function(BuildContext, String?)?
      textFieldPrecoPromoControllerValidator;
  // State field(s) for SwitchIsPromo widget.
  bool? switchIsPromoValue;
  // State field(s) for SwitchAtivo widget.
  bool? switchAtivoValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoController?.dispose();

    textFieldProcoFocusNode?.dispose();
    textFieldProcoController?.dispose();

    textFieldPrecoPromoFocusNode?.dispose();
    textFieldPrecoPromoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
