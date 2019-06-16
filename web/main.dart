import 'dart:html';

List<Element> notesUIList = List();

void main() {
  DivElement addBtn = querySelector('#addBtn');
  DivElement row = querySelector('#row');
  DivElement noteView = querySelector('#noteView');

  TextAreaElement noteTextArea = querySelector('#note');

  List<String> colorArr = [
    '#FFF475',
    '#CCFF90',
    '#8ED2F2',
    '#FFFFFF',
    '#F2AC55',
    '#F28B82',
    '#FFF475',
    '#CCFF90',
    '#F28B82',
    '#8ED2F2',
    '#F2AC55'
  ];

  addBtn.onClick.listen((event) {
    String note = noteTextArea.value;

    Element element = new Element.div();
    element.className = "col m2";

    colorArr.shuffle();
    element.style.backgroundColor = colorArr[0];
    element.style.margin = "20px";

    element.innerHtml = '''
            <div class="card-content black-text">
                 <p>$note</p>
            </div>
           <div class="card-action" align="right">
                         <div id="deleteBtn"><a class="waves-effect waves-light"><i class="material-icons left">delete</i></a></div>
                         <div id="editBtn"><a class="waves-effect waves-light"><i class="material-icons left">edit</i></a></div>
            </div>
            </div>
    ''';

    element.id = DateTime.now().millisecond.toString();
    notesUIList.add(element);

    row.append(element);
  });
}
