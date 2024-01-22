package controller;

import java.util.HashMap;
import java.util.Map;

public class HandlerMapping {
	private Map<String,Action> mappings;
	
	public HandlerMapping() {
		this.mappings=new HashMap<String,Action>();
		this.mappings.put("/main.do", new MainAction());
		this.mappings.put("/myPage.do", new MyPageAction());
		this.mappings.put("/login.do", new LoginAction());
		this.mappings.put("/logout.do", new LogoutAction());
		this.mappings.put("/loginPage.do", new LoginPageAction());
		this.mappings.put("/join.do", new JoinMemberAction());
		this.mappings.put("/joinAddress.do", new JoinAddressAction());
		this.mappings.put("/joinPage.do", new JoinPageAction());
		this.mappings.put("/productDetailAction", new ProductDetailAction());
		this.mappings.put("/mapPageAction", new MapPageAction());
		this.mappings.put("/address.do", new AddressAction());
		this.mappings.put("/addressPage.do", new AddressPageAction());
		this.mappings.put("/addressInsert.do", new AddressInsertAction());
		this.mappings.put("/cartInsert.do", new CartInsertAction());
		this.mappings.put("/orderList.do", new OrderListAction());
		this.mappings.put("/payInfo.do", new PayInfoAction());
		this.mappings.put("/payInfoPage.do", new PayInfoPageAction());
		this.mappings.put("/paySelect", new PaySelectAction());
		this.mappings.put("/paymentPage.do", new PaymentPageAction());
		this.mappings.put("/wishList.do", new WishListAction());
		this.mappings.put("/checkWished.do", new CheckWishedAction());
		this.mappings.put("/alert.do", new AlertAction());
		
	}
	
	public Action getAction(String commed) {
		return mappings.get(commed);
	}
	
}