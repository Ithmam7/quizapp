import 'package:flutter/material.dart';

class OptionTile extends StatefulWidget {

  final String option, description, correctAnswer, optionSelected;
  OptionTile({@required this.optionSelected, @required this.correctAnswer, @required this.description, @required this.option});
  @override
  _OptionTileState createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: widget.description== widget.optionSelected ? widget.optionSelected ==widget.correctAnswer? Colors.green.withOpacity(0.7): Colors.red.withOpacity(0.7): Colors.grey, width: 2),
              borderRadius: BorderRadius.circular(40)
            ),
            alignment: Alignment.center,
            child: Text("${widget.option}", style: TextStyle(
              color: widget.optionSelected==widget.description?
              widget.correctAnswer==widget.optionSelected ?
              Colors.green.withOpacity(0.7) : Colors.red.withOpacity(0.7)
              : Colors.grey
            ),),
          ),
          SizedBox(width: 10,),
          Text(widget.description, style: TextStyle(fontSize: 20, color: Colors.black54),)
        ],
      ),
    );
  }
}
