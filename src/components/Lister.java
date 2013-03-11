package components;

public class Lister{

	public Lister(){
	}

	/**
	 * Generate a nice presentable list using global and per-line pre and post appends. Useful for encasing a raw array of strings in an
	 * HTML-ready format using list tags.
	 * 
	 * @param beforeList
	 *            - What to add at the list header. E.g.
	 *            <ul>
	 * @param beforeEachItem
	 *            - Goes before each list item. E.g. <li>
	 * @param rawList
	 *            - Array of objects that support stringification (i.e. toString())
	 * @param afterEachItem
	 *            - Goes after each list item. E.g. </li>
	 * @param afterList
	 *            - End the list with a footer. E.g.
	 *            </ul>
	 * @return formatted list
	 */
	public static String toList(String beforeList, String beforeEachItem, Object[] rawList, String afterEachItem, String afterList){
		Debug.log("Lister.toList", "Entered");
		String formattedList = beforeList;
		for(Object listItem:rawList){
			formattedList += beforeEachItem + listItem.toString() + afterEachItem;
		}
		formattedList += afterList;
		Debug.log("Lister.toList", "Formatted List: "+formattedList);
		return formattedList;
	}

	/**
	 * Alternate version with no global pre and post strings. Refer the other toList() function for details.
	 */
	public static String toList(String beforeEachItem, Object[] rawList, String afterEachItem){
		return toList("", beforeEachItem, rawList, afterEachItem, "");
	}

}
