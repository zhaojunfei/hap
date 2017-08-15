<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" %>  
<div id="sidebar" style="float: left;">

<div class="sidebar-content">
		<p class="fl-panel fl-note fl-bevel-white fl-font-size-80">
			<spring:message code="screen.welcome.security" />
		</p>
		<div id="list-languages" class="fl-panel">
			<%
				final String queryString = request.getQueryString() == null ? ""
						: request.getQueryString().replaceAll(
								"&locale=([A-Za-z][A-Za-z]_)?[A-Za-z][A-Za-z]|^locale=([A-Za-z][A-Za-z]_)?[A-Za-z][A-Za-z]",
								"");
			%>
			<c:set var='query' value='<%=queryString%>' />
			<c:set var="xquery" value="${fn:escapeXml(query)}" />



			<div class="container">
				<!-- Portfolio Content -->
				<div id="portfolio-wrapper">

					<div
						class="one-third column portfolio-item interior-design architecture category1">
						<div class="picture">
							<a href="http://localhost:8080/cas-sample/" title="Linux"
								target="_blank"><img
								src="http://www.tomexam.com//upload/files/20170625/9654ce49-08ad-4a4d-a80d-7d619d8fd467.jpg"
								alt="Linux" />
								<div class="image-overlay-link"></div> </a>
							<div class="tm_istop"></div>
						</div>
						<div class="item-description alt">
							<h5>
								<a
									href="http://www.tomexam.com/blog-detail.xhtml?bid=035e8319-e7da-4c2c-8699-e00a6361e88b"
									target="_blank">视频：Linux安装TomExam免费版</a>
							</h5>
							<div class="blog-meta">
								<span><i class="mini-ico-calendar"></i> 2017-03-20
									09:58:19.0</span> &nbsp; <span><i class="mini-ico-eye-open"></i>
									1086</span>
							</div>
							<p>本文通过视频操作的方式，介绍TomExam在Linux平台的安装步骤。主要包括：JDK的安装；MySQL的安装和基本设置，以及数据库创建与导..</p>
						</div>
					</div>
					
				</div>
			</div>
			
		</div>
	</div>
	</div>