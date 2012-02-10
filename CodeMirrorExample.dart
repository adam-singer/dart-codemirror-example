#import('dart:html');
#import('../../dart_bleeding/dart/utils/dartdoc/classify.dart', prefix:"classify");
#source('CodeMirrorImpl.dart');

class CodeMirrorExample {

  CodeMirrorExample() {
  }

  void run() {
    CodeMirrorImpl codeMirror = new CodeMirrorImpl();
    document.window.on.resize.add((_) => codeMirror.viewResizeHandler(document));
    Element root = codeMirror.getMirror();
    document.body.nodes.add(root);
    codeMirror.viewResizeHandler(document);
    
    //write("Hello World!");
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
   // document.query('#status').innerHTML = message;
  }
}

void main() {
  new CodeMirrorExample().run();
}
