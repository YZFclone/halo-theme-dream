<footer class="footer" xmlns:th="https://www.thymeleaf.org">
    <div class="container">
        <ul class="footer-container">
            <li>
              <a class="logo-title" th:href="${site.url}">
                <th:block th:if="${#strings.isEmpty(site.logo)}" th:text="${site.title}"/>
                <th:block th:unless="${#strings.isEmpty(site.logo)}">
                  <img class="logo-img" th:src="${site.logo}" th:alt="${site.title}" height="28">
                  <img class="logo-img-dark" th:src="${#strings.defaultString(theme.config.basic_info.night_logo, site.logo)}" th:alt="${site.title}" height="28">
                </th:block>
              </a>
            </li>
            <li>
              <p class="icon-spot">
                <span th:text="'&copy; '+${#dates.format(#dates.createNow(), 'yyyy')}+' '+ ${site.title}"></span><a
                  th:if="${!#strings.isEmpty(theme.config.basic_info.record_number)}"
                  href="http://beian.miit.gov.cn/publish/query/indexFirst.action" target="_blank" rel="noopener noreferrer nofollow"
                  th:text="${theme.config.basic_info.record_number}"></a><span class="footer-truncation">Powered by <a class="powered" href="https://halo.run/" target="_blank">Halo</a> & <a class="powered" href="https://github.com/nineya/halo-theme-dream2.0" target="_blank">Dream</span></a>
                  <span class="footer-truncation">Designed by <a class="powered" href="http://www.ygo233.top/" target="_blank">祸根克罗</a></span></p>
              <p class="icon-spot" th:if="${!#strings.isEmpty(theme.config.basic_info.website_time) || theme.config.enhance.enable_busuanzi == true}">
                <span th:if="${!#strings.isEmpty(theme.config.basic_info.website_time)}" id="websiteDate">建站<span class="stand">00</span>天<span class="stand">0</span>时<span class="stand">0</span>分<span class="stand">0</span>秒</span>
                <span th:if="${theme.config.enhance.enable_busuanzi == true}" class="icon-spot footer-truncation">
                            <span id="busuanzi_container_site_uv" style="display: none">
                              <i class="ri-account-circle-line" aria-hidden="true"></i><span class="stand" id="busuanzi_value_site_uv">0</span>访客
                            </span>
                            <span id="busuanzi_container_site_pv" style="display: none">
                              <i class="ri-pie-chart-line" aria-hidden="true"></i><span class="stand" id="busuanzi_value_site_pv">0</span>访问
                            </span>
                        </span>
              </p>
              <p th:if="${!#strings.isEmpty(theme.config.basic_info.record_number_ps)}"><a th:href="'https://beian.mps.gov.cn/#/query/webSearch?code=' + ${theme.config.basic_info.record_number_ps.replaceAll('[^\d]', '')}" target="_blank" rel="noopener noreferrer nofollow"><img
                      th:src="${#theme.assets('/img/ga.png')}" alt="公网安备" style="vertical-align: text-top; width: 1.2em; margin-right: 4px;"/>[[${theme.config.basic_info.record_number_ps}]]</a></p>
              <p th:if="${!#strings.isEmpty(theme.config.basic_info.cloud_by_logo)}">本站由<a
                class="cloud-driven" target="_blank" rel="noopener noreferrer nofollow" th:href="${theme.config.basic_info.cloud_by_url}"><img
                alt="云服务商" th:src="${theme.config.basic_info.cloud_by_logo}"/></a>提供云服务</p>
            </li>
            <li>
                <halo:footer />
            </li>
        </ul>
    </div>
</footer>
