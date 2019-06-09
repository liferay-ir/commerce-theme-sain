AUI().ready(
	'liferay-sign-in-modal',
	function(A) {
		var signIn = A.one('.sign-in > a');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}


		// Add to Cart

		function animationEnd(event) {
			A.one(event.target).removeClass('animBounce');
		}

		var animateNodes = A.all('.animate');

		animateNodes.each(
			function(node) {
				node.getDOMNode().addEventListener('animationend', animationEnd);
			}
		);


		console.log(Liferay);

		Liferay.after(
			'updateCart',
			function(event) {
				Liferay.Portlet.refresh('#p_p_id_com_liferay_commerce_cart_content_web_internal_portlet_CommerceCartContentMiniPortlet_INSTANCE_commerceCartContentMiniPortlet_0_');

				var cartIcon = A.one('.mini-cart-wrap > a');

				console.log(event);

				if (cartIcon) {
					cartIcon.addClass('animBounce');

					var cartIconCount = A.one('.mini-cart-wrap .notification');

					if (cartIconCount) {
						var orderItemCount = event.summary.itemsQuantity;

						cartIconCount.html(orderItemCount);
						cartIconCount.removeClass('hide');
					}
				}
			}
		);
	}
);
