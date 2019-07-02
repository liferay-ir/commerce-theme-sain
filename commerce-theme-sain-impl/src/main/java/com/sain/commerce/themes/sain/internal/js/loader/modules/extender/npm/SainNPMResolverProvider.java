/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.sain.commerce.themes.sain.internal.js.loader.modules.extender.npm;

import com.liferay.frontend.js.loader.modules.extender.npm.NPMResolver;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;

/**
 * @author Marco Leo
 */
@Component(immediate = true, service = SainNPMResolverProvider.class)
public class SainNPMResolverProvider {

	public static NPMResolver getNPMResolver() {
		if (_npmResolverProvider == null) {
			System.out.println("return null ....");
			return null;
		}
		System.out.println("_npmResolverProvider._npmResolver.toString() = " + _npmResolverProvider._npmResolver.toString());
		return _npmResolverProvider._npmResolver;
	}

	public SainNPMResolverProvider() {
		System.out.println("HERE ............................. ");
		_npmResolverProvider = this;
	}

	@Reference(unbind = "-")
	protected void setNPMResolver(NPMResolver npmResolver) {
		_npmResolver = npmResolver;
	}

	private static SainNPMResolverProvider _npmResolverProvider;

	private NPMResolver _npmResolver;

}