import 'package:flutter/material.dart';
import '../../classes/cart.dart';
import '../../classes/plants_list.dart';
import 'cart_item.dart';

class CartPage extends StatefulWidget
{
  @override
  _CartPageState createState() => new _CartPageState();
}

class _CartPageState extends State<CartPage>
{
  @override
  Widget build(BuildContext context)
  {
    if(Cart.cartItems.length > 0)
    {
      return new Material
      (
        borderRadius: new BorderRadius.circular(8.0),
        child: new Scaffold
        (
          appBar: new AppBar
          (
            backgroundColor: Colors.white,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            title: new Text('Shopping cart', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 26.0)),
            actions: <Widget>
            [
              new Center
              (
                child: new IconButton
                (
                  onPressed: () => Navigator.of(context).pop(),
                  icon: new Icon(Icons.close, color: Colors.black45),
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: new ListView.builder
          (
            itemCount: Cart.cartItems.length,
            itemBuilder: (_, int pos) => new CartItem(plantsList[Cart.cartItems[pos]]),
          ),
          bottomNavigationBar: new Hero
          (
            tag: 'Buy button',
            child: new MaterialButton
            (
              onPressed: () {},
              color: Colors.green,
              child: new Padding
              (
                padding: const EdgeInsets.all(24.0),
                child: new Text('Buy Now (\$${calculateFinalPrice().toStringAsFixed(2)})', style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ),
      );
    }
    else // Show an empty state
    {
      return new Material
      (
        borderRadius: new BorderRadius.circular(8.0),
        child: new Scaffold
        (
          appBar: new AppBar
          (
            backgroundColor: Colors.white,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            title: new Text('Shopping cart', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 26.0)),
            actions: <Widget>
            [
              new Center
              (
                child: new IconButton
                (
                  onPressed: () => Navigator.of(context).pop(),
                  icon: new Icon(Icons.close, color: Colors.black45),
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: new Center
          (
            child: new Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                new Icon(Icons.remove_shopping_cart, color: Colors.black26, size: 96.0),
                new Padding(padding: new EdgeInsets.only(bottom: 48.0)),
                new Text('Your cart is empty!', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 28.0)),
                new Padding(padding: new EdgeInsets.only(bottom: 8.0)),
                new Container
                (
                  margin: new EdgeInsets.symmetric(horizontal: 64.0),
                  child: new Text('Looks like you haven\'t added any plants to your cart yet.', textAlign: TextAlign.center, style: new TextStyle(fontSize: 20.0)),
                ),
                new Padding(padding: new EdgeInsets.only(bottom: 96.0)),
                new Container
                (
                  child: new Material
                  (
                    elevation: 16.0,
                    shadowColor: new Color(0x7000E676),
                    color: Colors.white,
                    child: new InkWell
                    (
                      onTap: () => Navigator.of(context).pop(),
                      child: new Padding
                      (
                        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
                        child: new Text('Go back', style: new TextStyle(color: Colors.green, fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      );
    }
  }

  double calculateFinalPrice()
  {
    double cost = 0.0;
    for (int plantPos in Cart.cartItems)
    {
      cost += plantsList[plantPos].price;
    }

    return cost;
  }
}