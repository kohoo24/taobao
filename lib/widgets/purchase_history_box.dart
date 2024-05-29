import 'package:flutter/material.dart';

class PurchaseHistoryBox extends StatelessWidget {
  final String storeName;
  final String productName;
  final String price;
  final String productDetails;
  final String quantity;
  final String additionalInfo1;
  final String additionalInfo2;
  final String imagePath;
  final String status;
  final List<String> tags;
  final List<Map<String, dynamic>> buttons;
  final Function onDelete;
  final Function onReorder;
  final bool ynn;

  const PurchaseHistoryBox({
    super.key,
    required this.storeName,
    required this.productName,
    required this.price,
    required this.productDetails,
    required this.quantity,
    required this.additionalInfo1,
    required this.additionalInfo2,
    required this.imagePath,
    required this.status,
    required this.tags,
    required this.buttons,
    required this.onDelete,
    required this.onReorder,
    required this.ynn,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.store_mall_directory_outlined,
                      size: 28,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      storeName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey.shade400,
                    )
                  ],
                ),
                Text(
                  status,
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Image.asset(
                  imagePath,
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Transform.translate(
                    offset: const Offset(0, -20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                productName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '¥$price',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productDetails,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              quantity,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Wrap(
                          spacing: 4.0,
                          children: tags.map((tag) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 1.0,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.orange,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                              child: Text(
                                tag,
                                style: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 10.0,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  additionalInfo1,
                  style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Text(
                  additionalInfo2,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ynn ? '更多' : '',
                  style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: buttons.map((button) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            width: 1.0,
                            color: button['color'] ?? Colors.grey.shade300,
                            style: BorderStyle.solid,
                          ),
                          foregroundColor: button['color'] ?? Colors.black,
                          padding: const EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: 18.0,
                          ),
                        ),
                        onPressed: button['onPressed'],
                        child: Text(
                          button['text'],
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
